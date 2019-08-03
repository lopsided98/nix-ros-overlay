
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, boost }:
buildRosPackage {
  pname = "ros-kinetic-seed-smartactuator-sdk";
  version = "0.0.3-r1";

  src = fetchurl {
    url = https://github.com/seed-solutions/seed_smartactuator_sdk-release/archive/release/kinetic/seed_smartactuator_sdk/0.0.3-1.tar.gz;
    sha256 = "d2afcaa440303c4b91344666cfd0359ccca7fa744bd1093829f8ab3a5e0e9cac";
  };

  buildInputs = [ boost ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_smartactuator_sdk package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
