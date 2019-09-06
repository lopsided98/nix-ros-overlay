
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-crystal-fastcdr";
  version = "1.0.8";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastcdr-release/archive/release/crystal/fastcdr/1.0.8-0.tar.gz";
    name = "1.0.8-0.tar.gz";
    sha256 = "4ad70c34ca0db3146a4b1eaf0cefb85ffceb28087da57e4b0fd06345607d5935";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''CDR serialization implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
