
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, joint-limits-interface, roscpp, rostest }:
buildRosPackage {
  pname = "ros-melodic-pilz-extensions";
  version = "0.4.12-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_extensions/0.4.12-1.tar.gz";
    name = "0.4.12-1.tar.gz";
    sha256 = "dcb194f8272aebfcd2dd22e55a04984790b1f5e33bfab667a8f1c7215f70f9c2";
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
