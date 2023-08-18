
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost }:
buildRosPackage {
  pname = "ros-iron-swri-serial-util";
  version = "3.5.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/iron/swri_serial_util/3.5.4-1.tar.gz";
    name = "3.5.4-1.tar.gz";
    sha256 = "98ca0362247cdcd4b122508621d654354288aed7335809db5d8f6f942a33f0bd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_serial_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
