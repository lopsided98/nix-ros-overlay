
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-create-msgs";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/AutonomyLab/create_autonomy-release/archive/release/humble/create_msgs/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "a799bc8f04085b928f5de74c7d7af1d925442b138f48fadfdda45d531f586286";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Common message definitions for create_robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
