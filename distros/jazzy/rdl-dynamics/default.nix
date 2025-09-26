
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint, boost, doxygen, eigen, eigen3-cmake-module, graphviz, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-rdl-dynamics";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/jlack1987/rdl-release/archive/release/jazzy/rdl_dynamics/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "2f07e473d7ae159d1dd8061c44cea17069b577c45d207cceac597965e716e02f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-xmllint ament-lint ];
  propagatedBuildInputs = [ boost doxygen eigen eigen3-cmake-module graphviz rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The rdl_dynamics package";
    license = with lib.licenses; [ "Zlib" ];
  };
}
