
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt2 }:
buildRosPackage {
  pname = "ros-humble-mola-yaml";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_yaml/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "818169544b0fe72e8ef1e3de1a635a32faf323ea6ed99092081381cc1d2edd07";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''YAML helper library common to MOLA modules'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
