
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-automotive-platform-msgs";
  version = "2.0.3";

  src = fetchurl {
    url = https://github.com/astuff/automotive_autonomy_msgs-release/archive/release/melodic/automotive_platform_msgs/2.0.3-0.tar.gz;
    sha256 = "9e9e38d99db9d57b99f5cc554c6062cbec31765a2afe8141ecef0aec3c7f3fda";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic Messages for Communication with an Automotive Autonomous Platform'';
    license = with lib.licenses; [ mit ];
  };
}
