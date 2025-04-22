
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-test, ament-lint-auto, ament-lint-common, ros2cli, sros2 }:
buildRosPackage {
  pname = "ros-jazzy-sros2-cmake";
  version = "0.13.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/jazzy/sros2_cmake/0.13.3-1.tar.gz";
    name = "0.13.3-1.tar.gz";
    sha256 = "e410c06e16eb8cab60f997adda13a4e2bbac264dd845f1245a90774d0ee835f5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-test ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ros2cli sros2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CMake macros to configure security";
    license = with lib.licenses; [ asl20 ];
  };
}
