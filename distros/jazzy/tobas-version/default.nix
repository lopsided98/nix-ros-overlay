
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-version";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_version/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "1e05259124b2ad94b80973ce724895148491a9474eeadb04c1e2c29ded6d133a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Compile-time and runtime access to the Tobas software version.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
