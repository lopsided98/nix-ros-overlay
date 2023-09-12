
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-foxy-ruckig";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/pantor/ruckig-release/archive/release/foxy/ruckig/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "e4136424ccdd76574d89664e8fea7d1fe07059852064505c491cdc2bdbc48226";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Instantaneous Motion Generation for Robots and Machines.'';
    license = with lib.licenses; [ mit ];
  };
}
