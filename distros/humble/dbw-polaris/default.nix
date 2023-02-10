
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dbw-polaris-can, dbw-polaris-description, dbw-polaris-joystick-demo, dbw-polaris-msgs }:
buildRosPackage {
  pname = "ros-humble-dbw-polaris";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_polaris/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "d9200b64339338ad9a8e83a33e5f77d8dcfcab53d9f2a2964b4df3b6afe41e8b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ dbw-polaris-can dbw-polaris-description dbw-polaris-joystick-demo dbw-polaris-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Polaris GEM/Ranger/RZR DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
