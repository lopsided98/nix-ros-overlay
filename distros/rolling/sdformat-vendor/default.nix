
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, gz-cmake-vendor, gz-math-vendor, gz-tools-vendor, gz-utils-vendor, libxml2, python3Packages, tinyxml-2, urdfdom }:
buildRosPackage {
  pname = "ros-rolling-sdformat-vendor";
  version = "0.2.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sdformat_vendor-release/archive/release/rolling/sdformat_vendor/0.2.3-2.tar.gz";
    name = "0.2.3-2.tar.gz";
    sha256 = "c157c281b1c38b716277e21c8b5dc3737cf932044756e7e97a95744840b704d0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint libxml2 python3Packages.psutil python3Packages.pytest ];
  propagatedBuildInputs = [ gz-cmake-vendor gz-math-vendor gz-tools-vendor gz-utils-vendor python3Packages.pybind11 tinyxml-2 urdfdom ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: sdformat15 15.1.1

    SDFormat is an XML file format that describes environments, objects, and robots
in a manner suitable for robotic applications";
    license = with lib.licenses; [ asl20 ];
  };
}
