
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-noetic-ruckig";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/pantor/ruckig-release/archive/release/noetic/ruckig/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "eae85078de5937183224cdb31e7db66630269e1bc7efe19b0d597825573a11bd";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Instantaneous Motion Generation for Robots and Machines.'';
    license = with lib.licenses; [ mit ];
  };
}
