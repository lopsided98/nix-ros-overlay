
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, gz-cmake-vendor, gz-math-vendor, gz-tools-vendor, gz-utils-vendor, libxml2, python3Packages, tinyxml-2, urdfdom }:
buildRosPackage {
  pname = "ros-kilted-sdformat-vendor";
  version = "0.2.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sdformat_vendor-release/archive/release/kilted/sdformat_vendor/0.2.4-2.tar.gz";
    name = "0.2.4-2.tar.gz";
    sha256 = "ebefb2a86533f4d420678de973f66c69714f2aa89a73f2d17a52f0f80eff17ed";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint libxml2 python3Packages.psutil python3Packages.pytest ];
  propagatedBuildInputs = [ gz-cmake-vendor gz-math-vendor gz-tools-vendor gz-utils-vendor python3Packages.pybind11 tinyxml-2 urdfdom ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: sdformat15 15.2.0

    SDFormat is an XML file format that describes environments, objects, and robots
in a manner suitable for robotic applications";
    license = with lib.licenses; [ asl20 ];
  };
}
