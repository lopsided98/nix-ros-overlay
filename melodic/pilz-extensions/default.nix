
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, prbt-support, joint-limits-interface, catkin, rostest, code-coverage, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-pilz-extensions";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_extensions/0.4.2-0.tar.gz;
    sha256 = "e424ed432021db160b038cfb5aadb2bec718f5b919a50bd9fabd47488df1a300";
  };

  checkInputs = [ rostest code-coverage rosunit ];
  propagatedBuildInputs = [ prbt-support ];
  nativeBuildInputs = [ joint-limits-interface catkin roscpp ];

  meta = {
    description = ''The pilz_extensions package. Here are classes extending the functionality of other packages.
  On the long run these extensions should become pull requests on the respective packages.'';
    #license = lib.licenses.Apache 2.0;
  };
}
