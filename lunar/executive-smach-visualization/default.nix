
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, smach-viewer }:
buildRosPackage {
  pname = "ros-lunar-executive-smach-visualization";
  version = "2.0.2";

  src = fetchurl {
    url = https://github.com/jbohren/executive_smach_visualization-release/archive/release/lunar/executive_smach_visualization/2.0.2-0.tar.gz;
    sha256 = "fb1ca600381eddb4082f9a9a68f56892f8a114e40b5cabf21db9716c2cbfb407";
  };

  propagatedBuildInputs = [ smach-viewer ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This metapackage depends on the SMACH visualization tools.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
