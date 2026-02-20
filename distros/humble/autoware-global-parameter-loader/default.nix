
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-vehicle-info-utils }:
buildRosPackage {
  pname = "ros-humble-autoware-global-parameter-loader";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_global_parameter_loader/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "70a723b7f93e07d4a03e1522ac61ab808ab82c762336f68b1c60b2362dba3010";
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
