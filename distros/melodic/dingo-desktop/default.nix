
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dingo-msgs, dingo-viz }:
buildRosPackage {
  pname = "ros-melodic-dingo-desktop";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo_desktop-release/archive/release/melodic/dingo_desktop/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "db4ea8291d9ba30cbf19fd72a473dc9c047bcd16e2b6c97ddb73ea464a02dd75";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dingo-msgs dingo-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for working with Dingo from a ROS desktop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
