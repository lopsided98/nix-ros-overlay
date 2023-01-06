
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, diff-drive-controller, joint-state-broadcaster }:
buildRosPackage {
  pname = "ros-humble-pmb2-controller-configuration";
  version = "4.0.5-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_robot-gbp/archive/release/humble/pmb2_controller_configuration/4.0.5-1.tar.gz";
    name = "4.0.5-1.tar.gz";
    sha256 = "401859c2d2111bc79cdcb1d971b0320896d36fd5ef183f265f742246dcffa51e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller joint-state-broadcaster ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Launch files and scripts needed to configure
    the controllers of the PMB2 robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
