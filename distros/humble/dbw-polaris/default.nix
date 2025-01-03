
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dbw-polaris-can, dbw-polaris-description, dbw-polaris-joystick-demo, dbw-polaris-msgs }:
buildRosPackage {
  pname = "ros-humble-dbw-polaris";
  version = "2.1.16-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_polaris/2.1.16-1.tar.gz";
    name = "2.1.16-1.tar.gz";
    sha256 = "98993e4e379ffb751b51169367d93067352123588b3d023a192b904ae115684e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ dbw-polaris-can dbw-polaris-description dbw-polaris-joystick-demo dbw-polaris-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Drive-by-wire interface to the Dataspeed Inc. Polaris GEM/Ranger/RZR DBW kit";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
