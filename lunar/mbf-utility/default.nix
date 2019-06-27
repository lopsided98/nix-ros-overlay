
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-geometry-msgs, catkin, roscpp, tf2-ros, tf2, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-mbf-utility";
  version = "0.2.4-r1";

  src = fetchurl {
    url = https://github.com/uos-gbp/move_base_flex-release/archive/release/lunar/mbf_utility/0.2.4-1.tar.gz;
    sha256 = "1ac3af7ff91def3085cda9cca4229f2e78d877d35ae524d298503c429884cbff";
  };

  buildInputs = [ tf2-geometry-msgs roscpp tf2-ros tf2 tf geometry-msgs ];
  propagatedBuildInputs = [ tf2-geometry-msgs roscpp tf2-ros tf2 tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_utility package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
