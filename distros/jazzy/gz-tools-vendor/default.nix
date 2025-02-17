
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, gz-cmake-vendor, ruby }:
buildRosPackage {
  pname = "ros-jazzy-gz-tools-vendor";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_tools_vendor-release/archive/release/jazzy/gz_tools_vendor/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "29522541ec91bf9d196752360f1f38f237f1bd58f26240f6995f49631c21fc43";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ gz-cmake-vendor ruby ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-tools2 2.0.2

    Gazebo Tools: Entrypoint to Gazebo's command line interface";
    license = with lib.licenses; [ asl20 ];
  };
}
