
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, prbt-support, joint-limits-interface, catkin, rostest, code-coverage, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-pilz-extensions";
  version = "0.3.7";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/kinetic/pilz_extensions/0.3.7-0.tar.gz;
    sha256 = "a70ce8fd37ef17f7fa77625ca7c0cdcc13a90c57742d9052da76e5075074050c";
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
