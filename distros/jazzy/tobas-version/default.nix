
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-version";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_version/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "9918ac78aab965122f6ed6e1068ea15ba340f6ab3712a0b4c27fff20b5249ca7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Compile-time and runtime access to the Tobas software version.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
