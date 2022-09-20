
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, urdf }:
buildRosPackage {
  pname = "ros-foxy-husky-description";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/foxy/husky_description/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "19b1e057c9aab1660f2a9f61b28839133c44a463c6ce66f3ae6955762b7efa44";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Clearpath Husky URDF description'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
