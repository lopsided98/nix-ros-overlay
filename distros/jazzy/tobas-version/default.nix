
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h }:
buildRosPackage {
  pname = "ros-jazzy-tobas-version";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_version/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "940193b2ddf5e61ce7834011c92efd7c6afdf683fd928fe13302a22fc65e7597";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "Compile-time and runtime access to the Tobas software version.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
