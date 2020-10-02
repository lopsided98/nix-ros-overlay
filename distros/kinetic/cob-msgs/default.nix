
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-msgs";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/kinetic/cob_msgs/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "d26dea6b28ea6040a030585e865b4e8eda2622b9486e7f613bf72d880afc46e8";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ diagnostic-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for representing state information, such as battery information and emergency stop status.'';
    license = with lib.licenses; [ asl20 ];
  };
}
