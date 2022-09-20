
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-rxcpp-vendor";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/rosin-project/rxcpp_vendor-release/archive/release/melodic/rxcpp_vendor/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "a9489ead897a2615307dc749869cef1d17caddde0eda42a362f9d811cc34980b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A vendor package for RxCpp'';
    license = with lib.licenses; [ asl20 ];
  };
}
