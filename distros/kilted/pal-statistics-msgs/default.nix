
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-pal-statistics-msgs";
  version = "2.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_statistics-release/archive/release/kilted/pal_statistics_msgs/2.6.3-1.tar.gz";
    name = "2.6.3-1.tar.gz";
    sha256 = "c108a3694ec4c1cf0d83dc01dddc895503ef306e6a305f6ee00fa69f01c3c909";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Statistics msgs package";
    license = with lib.licenses; [ mit ];
  };
}
