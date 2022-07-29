
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, smach-viewer }:
buildRosPackage {
  pname = "ros-melodic-executive-smach-visualization";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/jbohren/executive_smach_visualization-release/archive/release/melodic/executive_smach_visualization/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "f72a55befe9ec51a6bee5dcbc14ce19af04fb88ecf524a39d98df1742e4cde37";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ smach-viewer ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This metapackage depends on the SMACH visualization tools.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
