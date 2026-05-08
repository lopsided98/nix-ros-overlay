
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-vehicle-info-utils }:
buildRosPackage {
  pname = "ros-jazzy-autoware-global-parameter-loader";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_global_parameter_loader/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "7302b87e1d170aefa4037bf449cf8aa1b48ac455146d27149b8119317dc9b72c";
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
