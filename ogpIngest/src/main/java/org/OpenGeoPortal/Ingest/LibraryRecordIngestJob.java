package org.OpenGeoPortal.Ingest;

import java.util.UUID;

public interface LibraryRecordIngestJob extends Runnable{
	void run();
	void init(UUID jobId);
}
