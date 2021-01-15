
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jackal-msgs, jackal-viz }:
buildRosPackage {
  pname = "ros-kinetic-jackal-desktop";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal_desktop-release/archive/release/kinetic/jackal_desktop/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "a31dbd63d298d5abbad59e761860e2d0efdf68c69ebc939866c05f6c58eb84eb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ jackal-msgs jackal-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for working with Jackal from a ROS desktop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
