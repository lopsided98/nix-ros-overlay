
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, fuse-constraints, fuse-core, fuse-msgs, fuse-variables, geometry-msgs, qt5, roslint, rviz, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-fuse-viz";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/fuse-release/archive/release/melodic/fuse_viz/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "344e5b335b0d41ae4b1eef9e3a7e0d26efefdbd1e9db412d9a41106673fa1d23";
  };

  buildType = "catkin";
  buildInputs = [ qt5.qtbase ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ eigen fuse-constraints fuse-core fuse-msgs fuse-variables geometry-msgs rviz tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fuse_viz package provides visualization tools for fuse.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
