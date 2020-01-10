
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, phidgets-analog-inputs, phidgets-digital-inputs, phidgets-digital-outputs }:
buildRosPackage {
  pname = "ros-eloquent-phidgets-ik";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/eloquent/phidgets_ik/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "a72c67f9888c0b02f066bb4e3ff944dd728b61d1ba77c559b33bb7737cc87deb";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ launch phidgets-analog-inputs phidgets-digital-inputs phidgets-digital-outputs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Driver for the Phidgets InterfaceKit devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
