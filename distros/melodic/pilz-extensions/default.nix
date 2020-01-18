
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, joint-limits-interface, roscpp, rostest }:
buildRosPackage {
  pname = "ros-melodic-pilz-extensions";
  version = "0.4.10-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_extensions/0.4.10-1.tar.gz";
    name = "0.4.10-1.tar.gz";
    sha256 = "73843793e0904c3c122e5c83c23e1f2b00a4661d0a9aff6ed630faeadd67af1f";
  };

  buildType = "catkin";
  buildInputs = [ roscpp ];
  checkInputs = [ code-coverage rostest ];
  propagatedBuildInputs = [ joint-limits-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_extensions package. Here are classes extending the functionality of other packages.
  On the long run these extensions should become pull requests on the respective packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
