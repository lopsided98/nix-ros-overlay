
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, kitti-metrics-eval, mola-input-euroc-dataset, mola-input-kitti-dataset, mola-input-kitti360-dataset, mola-input-mulran-dataset, mola-input-paris-luco-dataset }:
buildRosPackage {
  pname = "ros-rolling-mola-academic-datasets";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_academic_datasets-release/archive/release/rolling/mola_academic_datasets/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "2401adccabea9c57da1014ac81489cf2df4b48d2f3276c3143b94dcbc91d2af3";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ kitti-metrics-eval mola-input-euroc-dataset mola-input-kitti-dataset mola-input-kitti360-dataset mola-input-mulran-dataset mola-input-paris-luco-dataset ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Metapackage with all packages supporting reading academic datasets.";
    license = with lib.licenses; [ bsd3 ];
  };
}
