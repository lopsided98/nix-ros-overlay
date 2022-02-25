
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-novatel-oem7-msgs";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/novatel-gbp/novatel_oem7_driver-release/archive/release/melodic/novatel_oem7_msgs/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "f578782b25732b5357f60e1cf63d9eeb99bda7662156af44caa442365178f04c";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for NovAtel Oem7 family of receivers.'';
    license = with lib.licenses; [ mit ];
  };
}
