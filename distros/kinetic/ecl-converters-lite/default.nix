
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-config, ecl-license }:
buildRosPackage {
  pname = "ros-kinetic-ecl-converters-lite";
  version = "0.61.6";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/kinetic/ecl_converters_lite/0.61.6-0.tar.gz";
    name = "0.61.6-0.tar.gz";
    sha256 = "91bfe1c4fed127f72f0fdf43a7b828a5eb5b6397824dd8a2593e0c43cfbf7114";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ecl-config ecl-license ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''These are a very simple version of some of the functions in ecl_converters 
     suitable for firmware development. That is, there is no use of new, 
     templates or exceptions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
