
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, gz-cmake-vendor, gz-math-vendor, gz-tools-vendor, gz-utils-vendor, libxml2, python3Packages, tinyxml-2, urdfdom }:
buildRosPackage {
  pname = "ros-jazzy-sdformat-vendor";
  version = "0.0.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sdformat_vendor-release/archive/release/jazzy/sdformat_vendor/0.0.11-1.tar.gz";
    name = "0.0.11-1.tar.gz";
    sha256 = "3643ef2a52f1b01d4b1c4c83fc1b84ed7b4e27a7d8b78597f68cdc231d02464a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint libxml2 python3Packages.psutil python3Packages.pytest ];
  propagatedBuildInputs = [ gz-cmake-vendor gz-math-vendor gz-tools-vendor gz-utils-vendor python3Packages.pybind11 tinyxml-2 urdfdom ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: sdformat14 14.9.0

    SDFormat is an XML file format that describes environments, objects, and robots
in a manner suitable for robotic applications";
    license = with lib.licenses; [ asl20 ];
  };
}
