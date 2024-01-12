
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-ouster-msgs";
  version = "0.10.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouster-ros-release/archive/release/iron/ouster_msgs/0.10.4-1.tar.gz";
    name = "0.10.4-1.tar.gz";
    sha256 = "c616b21fbefaeeaddbc2ec94086329f703d6f1556cd8bb69fe1861d67041f47b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''ouster_ros message and service definitions'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
