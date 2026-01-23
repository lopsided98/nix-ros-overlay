
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, gz-cmake-vendor, gz-math-vendor, gz-tools-vendor, gz-utils-vendor, libxml2, python3Packages, tinyxml-2, urdfdom }:
buildRosPackage {
  pname = "ros-rolling-sdformat-vendor";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sdformat_vendor-release/archive/release/rolling/sdformat_vendor/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "fd3030252f805e15641041b4a0bf381949585d61c84fa56bff6f29b63a567551";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint libxml2 python3Packages.psutil python3Packages.pytest ];
  propagatedBuildInputs = [ gz-cmake-vendor gz-math-vendor gz-tools-vendor gz-utils-vendor python3Packages.pybind11 tinyxml-2 urdfdom ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: sdformat 16.0.1

    SDFormat is an XML file format that describes environments, objects, and robots
in a manner suitable for robotic applications";
    license = with lib.licenses; [ asl20 ];
  };
}
