
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-pal-statistics-msgs";
  version = "2.6.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_statistics-release/archive/release/kilted/pal_statistics_msgs/2.6.2-2.tar.gz";
    name = "2.6.2-2.tar.gz";
    sha256 = "98db57c7dfa5fb7e51e32e150d03d65883c7f771cdaf66684b430f6a73ac7238";
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
