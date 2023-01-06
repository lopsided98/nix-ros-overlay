
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, euslisp, rostest, subversion }:
buildRosPackage {
  pname = "ros-melodic-eus-qpoases";
  version = "0.1.16-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/melodic/eus_qpoases/0.1.16-1.tar.gz";
    name = "0.1.16-1.tar.gz";
    sha256 = "b8ba9ea5267823ce81715398b76d84745b686a885f2af7f98efee48a7cdb845f";
  };

  buildType = "catkin";
  buildInputs = [ catkin subversion ];
  propagatedBuildInputs = [ euslisp rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''eus_qpoases'';
    license = with lib.licenses; [ asl20 ];
  };
}
