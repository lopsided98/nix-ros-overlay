
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, trajectory-msgs, sensor-msgs, catkin, actionlib, roscpp }:
buildRosPackage {
  pname = "ros-lunar-katana-tutorials";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/uos-gbp/katana_driver-release/archive/release/lunar/katana_tutorials/1.1.2-0.tar.gz;
    sha256 = "8a7411411d3c7336b7ae62296493878fd5d638372a41902b0b7323e94498251e";
  };

  buildInputs = [ control-msgs trajectory-msgs sensor-msgs actionlib roscpp ];
  propagatedBuildInputs = [ control-msgs trajectory-msgs sensor-msgs actionlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains test and demo programs for the katana_driver stack.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
