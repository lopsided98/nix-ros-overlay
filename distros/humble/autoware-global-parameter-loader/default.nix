
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-vehicle-info-utils }:
buildRosPackage {
  pname = "ros-humble-autoware-global-parameter-loader";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_global_parameter_loader/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "52772d49418583f670769f61e6a9e8ff47623a237abd582dcd55be8b55e47b82";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-vehicle-info-utils ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_global_parameter_loader package";
    license = with lib.licenses; [ asl20 ];
  };
}
