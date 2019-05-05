
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, people-msgs, tf, sensor-msgs, catkin, message-filters, bfl, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-people-tracking-filter";
  version = "1.1.2-r1";

  src = fetchurl {
    url = https://github.com/OSUrobotics/people-release/archive/release/lunar/people_tracking_filter/1.1.2-1.tar.gz;
    sha256 = "f539366097c3d092d33bb517d31e84a3b1971f9993e28a5f02f1b5d57fe43d35";
  };

  buildInputs = [ people-msgs sensor-msgs message-filters roscpp bfl std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ people-msgs sensor-msgs message-filters roscpp bfl std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of filtering tools for tracking people's locations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
