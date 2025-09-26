
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-index-cpp, ament-lint, rclcpp, rdl-dynamics, tinyxml, tinyxml-vendor, urdf }:
buildRosPackage {
  pname = "ros-jazzy-rdl-urdfreader";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/jlack1987/rdl-release/archive/release/jazzy/rdl_urdfreader/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "9ba5ae22a5b205b091d67bd7e58bb76e664ed68840ee95f2acd1242f4f304a3f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-xmllint ament-index-cpp ament-lint ];
  propagatedBuildInputs = [ rclcpp rdl-dynamics tinyxml tinyxml-vendor urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The rdl_urdfreader package";
    license = with lib.licenses; [ "Zlib" ];
  };
}
