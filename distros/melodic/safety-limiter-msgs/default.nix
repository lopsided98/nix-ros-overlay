
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-safety-limiter-msgs";
  version = "0.14.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_msgs-release/archive/release/melodic/safety_limiter_msgs/0.14.0-1.tar.gz";
    name = "0.14.0-1.tar.gz";
    sha256 = "8b42f4cf35fa1a16b8317ad37e2398a889eeca5d4aa3f7b7be6ede661b0fe086";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for safety_limiter_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
