
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, prbt-support, joint-limits-interface, catkin, rostest, code-coverage, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-pilz-extensions";
  version = "0.4.4-r1";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_extensions/0.4.4-1.tar.gz;
    sha256 = "323d7345e2b1e359852e2212ddc8f084be27cb113fce723d9015b81b22bcb9ea";
  };

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
