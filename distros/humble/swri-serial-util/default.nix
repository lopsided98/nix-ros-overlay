
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost }:
buildRosPackage {
  pname = "ros-humble-swri-serial-util";
  version = "3.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_serial_util/3.5.2-1.tar.gz";
    name = "3.5.2-1.tar.gz";
    sha256 = "aa9ca1cb5bcdf3dcf8070c0baf1453c95e200d5edf8efe2fcd0a7a1f8c4e116f";
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
