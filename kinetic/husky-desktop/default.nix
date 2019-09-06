
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, husky-viz, catkin, husky-msgs }:
buildRosPackage {
  pname = "ros-kinetic-husky-desktop";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_desktop/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "234de6a2e94b2b9c6a36a7d66d2aa8f64778bf53fd1be59ae0912d2cc7c86b76";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ husky-viz husky-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky visualization software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
