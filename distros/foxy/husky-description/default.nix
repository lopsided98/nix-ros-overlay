
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, realsense2-description, urdf }:
buildRosPackage {
  pname = "ros-foxy-husky-description";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/foxy/husky_description/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "fa04e07fd13e5130a7fd328ac10c22cdfb29fa5c319d57461fc48b069ca21e89";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ realsense2-description urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Clearpath Husky URDF description'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
