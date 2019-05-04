
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-automotive-platform-msgs";
  version = "2.0.3";

  src = fetchurl {
    url = https://github.com/astuff/automotive_autonomy_msgs-release/archive/release/kinetic/automotive_platform_msgs/2.0.3-0.tar.gz;
    sha256 = "63c1a1ecf12184be1954ffa38860b918033dc4f169dda552791abb1443452528";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic Messages for Communication with an Automotive Autonomous Platform'';
    license = with lib.licenses; [ mit ];
  };
}
