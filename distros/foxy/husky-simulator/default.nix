
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, husky-gazebo }:
buildRosPackage {
  pname = "ros-foxy-husky-simulator";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/foxy/husky_simulator/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "01d762b92954cd736df2a54d83a43042c14190a587db8b93645f577057b9cac6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ husky-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for Clearpath Husky simulation software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
