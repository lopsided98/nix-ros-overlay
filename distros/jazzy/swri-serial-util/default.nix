
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost }:
buildRosPackage {
  pname = "ros-jazzy-swri-serial-util";
  version = "3.6.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/jazzy/swri_serial_util/3.6.1-3.tar.gz";
    name = "3.6.1-3.tar.gz";
    sha256 = "69681c3220e5a52171ad77d7f182c397d78b4469d87d443fc373c3e009f32779";
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
