
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, git }:
buildRosPackage {
  pname = "ros-lyrical-hash-library-vendor";
  version = "0.1.1-r8";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hash_library_vendor-release/archive/release/lyrical/hash_library_vendor/0.1.1-8.tar.gz";
    name = "0.1.1-8.tar.gz";
    sha256 = "f96aecbaed7579f1548e3d2ed72457a033575019ba4a97bde7d58387a5c417db";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto git ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-auto git ];

  meta = {
    description = "ROS2 vendor package for stbrumme/hash-library";
    license = with lib.licenses; [ asl20 "Zlib-License" ];
  };
}
