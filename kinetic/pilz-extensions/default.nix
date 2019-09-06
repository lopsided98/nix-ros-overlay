
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, prbt-support, joint-limits-interface, catkin, rostest, code-coverage, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-pilz-extensions";
  version = "0.3.8";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/kinetic/pilz_extensions/0.3.8-0.tar.gz";
    name = "0.3.8-0.tar.gz";
    sha256 = "0574853279e6ad3901da6c088307d7d756599940eb3a5f47e6f56a0ae1f00a39";
  };

  buildType = "catkin";
  buildInputs = [ joint-limits-interface roscpp ];
  checkInputs = [ rostest prbt-support code-coverage rosunit ];
  propagatedBuildInputs = [ joint-limits-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_extensions package. Here are classes extending the functionality of other packages.
  On the long run these extensions should become pull requests on the respective packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
