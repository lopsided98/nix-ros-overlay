
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, diff-drive-controller, imu-sensor-broadcaster, joint-state-controller }:
buildRosPackage {
  pname = "ros-foxy-pmb2-controller-configuration";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_robot-gbp/archive/release/foxy/pmb2_controller_configuration/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "df7f3da06a7daf015f35ae2bd63c5bd880ae94d492f2c06659656ea45b1618e1";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller imu-sensor-broadcaster joint-state-controller ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Launch files and scripts needed to configure
    the controllers of the PMB2 robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
