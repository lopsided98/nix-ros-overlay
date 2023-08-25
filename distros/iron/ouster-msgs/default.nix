
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-ouster-msgs";
  version = "0.10.3-r1";

  src = fetchurl {
    url = "https://github.com/ouster-lidar/ouster-ros-release/archive/release/iron/ouster_msgs/0.10.3-1.tar.gz";
    name = "0.10.3-1.tar.gz";
    sha256 = "f7801e0b8d34950d3a87f352909b9ef9921b02911405e654d53364437399ae5b";
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
