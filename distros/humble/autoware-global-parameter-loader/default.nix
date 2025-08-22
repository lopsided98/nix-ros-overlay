
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-vehicle-info-utils }:
buildRosPackage {
  pname = "ros-humble-autoware-global-parameter-loader";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_global_parameter_loader/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "7785ee4ee3abc6f358b5254556c508423b2837ee86a7f1a83d7276253b4c663d";
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
