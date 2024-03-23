
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost }:
buildRosPackage {
  pname = "ros-rolling-swri-serial-util";
  version = "3.6.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_serial_util/3.6.1-2.tar.gz";
    name = "3.6.1-2.tar.gz";
    sha256 = "857704c7c9013a5b0b91bb77e92b98d6a8e412cd956fb22ef1a98082f6ba60df";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "swri_serial_util";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
