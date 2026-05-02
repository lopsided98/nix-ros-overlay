
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-rolling-hebi-cpp-api";
  version = "3.16.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hebi_cpp_api-release/archive/release/rolling/hebi_cpp_api/3.16.0-2.tar.gz";
    name = "3.16.0-2.tar.gz";
    sha256 = "44e30cb4deb15154dda12e22f65144ba61c9a154981aca6eb302dde55bdf8d87";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS 2 package providing access to the HEBI C++ API.";
    license = with lib.licenses; [ asl20 ];
  };
}
